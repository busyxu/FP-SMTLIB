(declare-fun x1_ack!5919 () (_ BitVec 64))
(declare-fun x0_ack!5923 () (_ BitVec 64))
(declare-fun x2_ack!5920 () (_ BitVec 64))
(declare-fun b_ack!5922 () (_ BitVec 64))
(declare-fun a_ack!5921 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5923) ((_ to_fp 11 53) x1_ack!5919)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5919) ((_ to_fp 11 53) x2_ack!5920)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5919)
                       ((_ to_fp 11 53) x0_ack!5923))
               ((_ to_fp 11 53) x0_ack!5923))
       ((_ to_fp 11 53) x1_ack!5919)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5919)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5919)
                       ((_ to_fp 11 53) x0_ack!5923)))
       ((_ to_fp 11 53) x0_ack!5923)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5920)
                       ((_ to_fp 11 53) x1_ack!5919))
               ((_ to_fp 11 53) x1_ack!5919))
       ((_ to_fp 11 53) x2_ack!5920)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5920)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5920)
                       ((_ to_fp 11 53) x1_ack!5919)))
       ((_ to_fp 11 53) x1_ack!5919)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5919)
                    ((_ to_fp 11 53) x0_ack!5923))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5920)
                    ((_ to_fp 11 53) x1_ack!5919))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5921) ((_ to_fp 11 53) b_ack!5922))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5921) ((_ to_fp 11 53) x0_ack!5923))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5922) ((_ to_fp 11 53) x2_ack!5920))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5921) ((_ to_fp 11 53) b_ack!5922))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5921) ((_ to_fp 11 53) x0_ack!5923))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5921) ((_ to_fp 11 53) x1_ack!5919))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5922) ((_ to_fp 11 53) x0_ack!5923))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5922) ((_ to_fp 11 53) x1_ack!5919)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5919) ((_ to_fp 11 53) b_ack!5922))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5919)
                    ((_ to_fp 11 53) x0_ack!5923))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5919)
          ((_ to_fp 11 53) x0_ack!5923))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5919)
          ((_ to_fp 11 53) x0_ack!5923))))

(check-sat)
(exit)
