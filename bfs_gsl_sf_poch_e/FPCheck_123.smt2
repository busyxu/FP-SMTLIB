(declare-fun b_ack!440 () (_ BitVec 64))
(declare-fun a_ack!441 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!440) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!440) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!441) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!441)
               ((_ to_fp 11 53) b_ack!440))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!440))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fb999999999999a)
                    ((_ to_fp 11 53) a_ack!441)))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!441) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!440)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!440))
                           (CF_log a_ack!441))
                   (fp.abs ((_ to_fp 11 53) b_ack!440)))))
  (fp.eq a!1 (CF_log a_ack!441))))
(assert (not (fp.eq (fp.abs (CF_log a_ack!441)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!440))
                           (CF_log a_ack!441))
                   (CF_log a_ack!441))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!440)))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) b_ack!440))
                          (CF_log a_ack!441))
                  ((_ to_fp 11 53) #x3fb999999999999a))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW #x3fb999999999999a a_ack!441))

(check-sat)
(exit)
