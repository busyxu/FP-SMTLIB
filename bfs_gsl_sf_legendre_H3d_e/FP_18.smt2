(declare-fun c_ack!244 () (_ BitVec 64))
(declare-fun a_ack!245 () (_ BitVec 32))
(declare-fun b_ack!243 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (= #x00000000 a_ack!245)))
(assert (not (= #x00000001 a_ack!245)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!244) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.abs ((_ to_fp 11 53) b_ack!243))
               ((_ to_fp 11 53) c_ack!244))
       ((_ to_fp 11 53) #x3ff0000000000000)))

(check-sat)
(exit)
