(declare-fun x1_ack!5922 () (_ BitVec 64))
(declare-fun x0_ack!5928 () (_ BitVec 64))
(declare-fun x2_ack!5923 () (_ BitVec 64))
(declare-fun b_ack!5927 () (_ BitVec 64))
(declare-fun a_ack!5926 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!5924 () (_ BitVec 64))
(declare-fun y2_ack!5925 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5928) ((_ to_fp 11 53) x1_ack!5922)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5922) ((_ to_fp 11 53) x2_ack!5923)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5922)
                       ((_ to_fp 11 53) x0_ack!5928))
               ((_ to_fp 11 53) x0_ack!5928))
       ((_ to_fp 11 53) x1_ack!5922)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5922)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5922)
                       ((_ to_fp 11 53) x0_ack!5928)))
       ((_ to_fp 11 53) x0_ack!5928)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5923)
                       ((_ to_fp 11 53) x1_ack!5922))
               ((_ to_fp 11 53) x1_ack!5922))
       ((_ to_fp 11 53) x2_ack!5923)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5923)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5923)
                       ((_ to_fp 11 53) x1_ack!5922)))
       ((_ to_fp 11 53) x1_ack!5922)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5922)
                    ((_ to_fp 11 53) x0_ack!5928))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5923)
                    ((_ to_fp 11 53) x1_ack!5922))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5926) ((_ to_fp 11 53) b_ack!5927))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5926) ((_ to_fp 11 53) x0_ack!5928))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5927) ((_ to_fp 11 53) x2_ack!5923))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5926) ((_ to_fp 11 53) b_ack!5927))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5926) ((_ to_fp 11 53) x0_ack!5928))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5926) ((_ to_fp 11 53) x1_ack!5922)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5922) ((_ to_fp 11 53) a_ack!5926))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5927) ((_ to_fp 11 53) x1_ack!5922))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5927) ((_ to_fp 11 53) x2_ack!5923))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5923)
                    ((_ to_fp 11 53) x1_ack!5922))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!5925)
          ((_ to_fp 11 53) y1_ack!5924))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!5923)
          ((_ to_fp 11 53) x1_ack!5922))))

(check-sat)
(exit)
