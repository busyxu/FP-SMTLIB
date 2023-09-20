(declare-fun x1_ack!5159 () (_ BitVec 64))
(declare-fun x0_ack!5163 () (_ BitVec 64))
(declare-fun x2_ack!5160 () (_ BitVec 64))
(declare-fun b_ack!5162 () (_ BitVec 64))
(declare-fun a_ack!5161 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5163) ((_ to_fp 11 53) x1_ack!5159)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5159) ((_ to_fp 11 53) x2_ack!5160)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5159)
                       ((_ to_fp 11 53) x0_ack!5163))
               ((_ to_fp 11 53) x0_ack!5163))
       ((_ to_fp 11 53) x1_ack!5159)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5159)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5159)
                       ((_ to_fp 11 53) x0_ack!5163)))
       ((_ to_fp 11 53) x0_ack!5163)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5160)
                       ((_ to_fp 11 53) x1_ack!5159))
               ((_ to_fp 11 53) x1_ack!5159))
       ((_ to_fp 11 53) x2_ack!5160)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5160)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5160)
                       ((_ to_fp 11 53) x1_ack!5159)))
       ((_ to_fp 11 53) x1_ack!5159)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5159)
                    ((_ to_fp 11 53) x0_ack!5163))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5160)
                    ((_ to_fp 11 53) x1_ack!5159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5161) ((_ to_fp 11 53) b_ack!5162))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5161) ((_ to_fp 11 53) x0_ack!5163))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5162) ((_ to_fp 11 53) x2_ack!5160))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5161) ((_ to_fp 11 53) b_ack!5162))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5161) ((_ to_fp 11 53) x0_ack!5163))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5161) ((_ to_fp 11 53) x1_ack!5159)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5159) ((_ to_fp 11 53) a_ack!5161))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5162) ((_ to_fp 11 53) x1_ack!5159))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5162) ((_ to_fp 11 53) x2_ack!5160)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5160)
                    ((_ to_fp 11 53) x1_ack!5159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5161)
                       ((_ to_fp 11 53) x1_ack!5159))
               ((_ to_fp 11 53) x1_ack!5159))
       ((_ to_fp 11 53) a_ack!5161)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5161)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5161)
                       ((_ to_fp 11 53) x1_ack!5159)))
       ((_ to_fp 11 53) x1_ack!5159)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5161)
          ((_ to_fp 11 53) x1_ack!5159))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5161)
          ((_ to_fp 11 53) x1_ack!5159))))

(check-sat)
(exit)
