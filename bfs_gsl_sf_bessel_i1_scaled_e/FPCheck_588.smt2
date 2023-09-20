(declare-fun a_ack!898 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!898))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!898))
            ((_ to_fp 11 53) #x0020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!898))
            ((_ to_fp 11 53) #x3e66a09e667f3bcd))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!898))
             ((_ to_fp 11 53) #x4008000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!898))
        ((_ to_fp 11 53) #x4020000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!898)))
                   ((_ to_fp 11 53) #x4026000000000000))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4014000000000000)))))

(check-sat)
(exit)
