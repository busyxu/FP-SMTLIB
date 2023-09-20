(declare-fun a_ack!549 () (_ BitVec 64))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!549)
               ((_ to_fp 11 53) a_ack!549))
       ((_ to_fp 11 53) #x3f9932cbb7f0cf30)))

(check-sat)
(exit)
