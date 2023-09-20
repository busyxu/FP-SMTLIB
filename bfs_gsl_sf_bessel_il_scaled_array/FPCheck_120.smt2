(declare-fun b_ack!431 () (_ BitVec 64))
(declare-fun a_ack!432 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!431) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!431) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!432) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!431))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!432)))
(assert (= #x00000000 a_ack!432))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!431))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!431)))
                  ((_ to_fp 11 53) #x0028000000000000))))
  (not a!1)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x8000000000000000)
                       ((_ to_fp 11 53) b_ack!431)))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x8000000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!431)))))

(check-sat)
(exit)
