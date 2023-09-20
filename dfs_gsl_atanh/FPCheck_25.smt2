(declare-fun a_ack!37 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!37))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!37))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!37))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.lt ((_ to_fp 11 53) a_ack!37)
                         ((_ to_fp 11 53) #x0000000000000000))
                  #xffffffff
                  #x00000001))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3fe0000000000000)))

(check-sat)
(exit)
