(declare-fun a_ack!1421 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1421))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1421))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1421))
        ((_ to_fp 11 53) #x4014000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!1421))
  #x4008000000000000))

(check-sat)
(exit)
