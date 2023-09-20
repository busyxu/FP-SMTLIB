(declare-fun a_ack!367 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!367)
                    ((_ to_fp 11 53) a_ack!367))
            ((_ to_fp 11 53) #x3f9932cbb7f0cf30))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!367) ((_ to_fp 11 53) #x4020000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!367)
          ((_ to_fp 11 53) #x3fe20dd750429b62))
  #x3ff467e6dad8642a))

(check-sat)
(exit)
