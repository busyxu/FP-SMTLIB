(declare-fun x1_ack!779 () (_ BitVec 64))
(declare-fun x0_ack!782 () (_ BitVec 64))
(declare-fun x2_ack!780 () (_ BitVec 64))
(declare-fun xx_ack!781 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!782) ((_ to_fp 11 53) x1_ack!779)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!779) ((_ to_fp 11 53) x2_ack!780)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!779)
                       ((_ to_fp 11 53) x0_ack!782))
               ((_ to_fp 11 53) x0_ack!782))
       ((_ to_fp 11 53) x1_ack!779)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!779)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!779)
                       ((_ to_fp 11 53) x0_ack!782)))
       ((_ to_fp 11 53) x0_ack!782)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!780)
                       ((_ to_fp 11 53) x1_ack!779))
               ((_ to_fp 11 53) x1_ack!779))
       ((_ to_fp 11 53) x2_ack!780)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!780)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!780)
                       ((_ to_fp 11 53) x1_ack!779)))
       ((_ to_fp 11 53) x1_ack!779)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!779)
                    ((_ to_fp 11 53) x0_ack!782))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!780)
                    ((_ to_fp 11 53) x1_ack!779))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!781) ((_ to_fp 11 53) x0_ack!782))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!781) ((_ to_fp 11 53) x2_ack!780))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!781) ((_ to_fp 11 53) x0_ack!782))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!781) ((_ to_fp 11 53) x1_ack!779)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!779) ((_ to_fp 11 53) xx_ack!781))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!780)
               ((_ to_fp 11 53) x1_ack!779))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!780)
          ((_ to_fp 11 53) x1_ack!779))))

(check-sat)
(exit)
