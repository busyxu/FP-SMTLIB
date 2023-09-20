(declare-fun b_ack!331 () (_ BitVec 64))
(declare-fun a_ack!332 () (_ BitVec 32))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!331) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!331) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt (bvadd #x00000001 a_ack!332) #x00000000)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #xffffffff a_ack!332))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    ((_ to_fp 11 53) b_ack!331))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) b_ack!331)))
                  ((_ to_fp 11 53) #x3fc999999999999a))))
  (not a!1)))

(check-sat)
(exit)
