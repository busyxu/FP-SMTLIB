(declare-fun b_ack!79 () (_ BitVec 64))
(declare-fun a_ack!80 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!79) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!80) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!79))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!80)))
(assert (= #x00000000 a_ack!80))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!79))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!79)))
                  ((_ to_fp 11 53) #x0028000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!79)))
                  ((_ to_fp 11 53) #x3fd0000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_OVERFLOW
  #xc000000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!79)))))

(check-sat)
(exit)
