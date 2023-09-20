(declare-fun b_ack!190 () (_ BitVec 64))
(declare-fun a_ack!191 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!191) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!191)
               ((_ to_fp 11 53) b_ack!190))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!190))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fb999999999999a)
               ((_ to_fp 11 53) a_ack!191))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!191) ((_ to_fp 11 53) #x4065600000000000)))

(check-sat)
(exit)
