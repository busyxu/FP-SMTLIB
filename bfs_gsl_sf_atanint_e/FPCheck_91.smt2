(declare-fun a_ack!131 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!131))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!131))
            ((_ to_fp 11 53) #x3e40000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!131))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!131))
       ((_ to_fp 11 53) #x4190000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!131)
                  ((_ to_fp 11 53) a_ack!131)))
  #x3fe0000000000000))

(check-sat)
(exit)
