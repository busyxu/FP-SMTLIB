(declare-fun a_ack!20 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!20)) ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (FPCHECK_FADD_OVERFLOW
  #x3e93660f974707d5
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!20)
                  ((_ to_fp 11 53) a_ack!20))
          ((_ to_fp 11 53) #x3e208db48ebe51c7))))

(check-sat)
(exit)
