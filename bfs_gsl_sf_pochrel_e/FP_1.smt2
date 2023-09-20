(declare-fun a_ack!23 () (_ BitVec 64))
(declare-fun b_ack!22 () (_ BitVec 64))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!22))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               (fp.abs ((_ to_fp 11 53) a_ack!23)))))

(check-sat)
(exit)
