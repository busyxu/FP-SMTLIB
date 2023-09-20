(declare-fun b_ack!597 () (_ BitVec 64))
(declare-fun a_ack!598 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!597) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!597) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!598) #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!597) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!598)))
(assert (not (= #x00000000 a_ack!598)))
(assert (not (= #x00000001 a_ack!598)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!597))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!597)
                       ((_ to_fp 11 53) b_ack!597))
               ((_ to_fp 11 53) b_ack!597))
       ((_ to_fp 11 53) b_ack!597)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!597))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!597)
                       ((_ to_fp 11 53) b_ack!597))
               ((_ to_fp 11 53) b_ack!597))
       ((_ to_fp 11 53) b_ack!597)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 a_ack!598))
                           ((_ to_fp 11 53) #x3ff8000000000000)))))
  (fp.lt (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!597)
                 ((_ to_fp 11 53) b_ack!597))
         (fp.div roundNearestTiesToEven
                 a!1
                 ((_ to_fp 11 53) #x4005bf0a8b145769)))))
(assert (FPCHECK_FADD_OVERFLOW
  ((_ to_fp 11 53) roundNearestTiesToEven (bvadd #x00000001 a_ack!598))
  #x3fe0000000000000))

(check-sat)
(exit)
