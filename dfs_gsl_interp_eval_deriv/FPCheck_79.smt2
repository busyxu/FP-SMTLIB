(declare-fun x1_ack!787 () (_ BitVec 64))
(declare-fun x0_ack!790 () (_ BitVec 64))
(declare-fun x2_ack!788 () (_ BitVec 64))
(declare-fun xx_ack!789 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!790) ((_ to_fp 11 53) x1_ack!787)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!787) ((_ to_fp 11 53) x2_ack!788)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!787)
                       ((_ to_fp 11 53) x0_ack!790))
               ((_ to_fp 11 53) x0_ack!790))
       ((_ to_fp 11 53) x1_ack!787)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!787)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!787)
                       ((_ to_fp 11 53) x0_ack!790)))
       ((_ to_fp 11 53) x0_ack!790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!788)
                       ((_ to_fp 11 53) x1_ack!787))
               ((_ to_fp 11 53) x1_ack!787))
       ((_ to_fp 11 53) x2_ack!788)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!788)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!788)
                       ((_ to_fp 11 53) x1_ack!787)))
       ((_ to_fp 11 53) x1_ack!787)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!787)
                    ((_ to_fp 11 53) x0_ack!790))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!788)
                    ((_ to_fp 11 53) x1_ack!787))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!789) ((_ to_fp 11 53) x0_ack!790))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!789) ((_ to_fp 11 53) x2_ack!788))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!789) ((_ to_fp 11 53) x0_ack!790))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!789) ((_ to_fp 11 53) x1_ack!787)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!787) ((_ to_fp 11 53) xx_ack!789))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!788)
               ((_ to_fp 11 53) x1_ack!787))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!788)
          ((_ to_fp 11 53) x1_ack!787))))

(check-sat)
(exit)
