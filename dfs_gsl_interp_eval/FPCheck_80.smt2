(declare-fun x1_ack!791 () (_ BitVec 64))
(declare-fun x0_ack!794 () (_ BitVec 64))
(declare-fun x2_ack!792 () (_ BitVec 64))
(declare-fun xx_ack!793 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!794) ((_ to_fp 11 53) x1_ack!791)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!791) ((_ to_fp 11 53) x2_ack!792)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!791)
                       ((_ to_fp 11 53) x0_ack!794))
               ((_ to_fp 11 53) x0_ack!794))
       ((_ to_fp 11 53) x1_ack!791)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!791)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!791)
                       ((_ to_fp 11 53) x0_ack!794)))
       ((_ to_fp 11 53) x0_ack!794)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!792)
                       ((_ to_fp 11 53) x1_ack!791))
               ((_ to_fp 11 53) x1_ack!791))
       ((_ to_fp 11 53) x2_ack!792)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!792)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!792)
                       ((_ to_fp 11 53) x1_ack!791)))
       ((_ to_fp 11 53) x1_ack!791)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!791)
                    ((_ to_fp 11 53) x0_ack!794))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!792)
                    ((_ to_fp 11 53) x1_ack!791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!793) ((_ to_fp 11 53) x0_ack!794))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!793) ((_ to_fp 11 53) x2_ack!792))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!793) ((_ to_fp 11 53) x0_ack!794))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!793) ((_ to_fp 11 53) x1_ack!791)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!791) ((_ to_fp 11 53) xx_ack!793))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!792)
               ((_ to_fp 11 53) x1_ack!791))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!792)
          ((_ to_fp 11 53) x1_ack!791))))

(check-sat)
(exit)
