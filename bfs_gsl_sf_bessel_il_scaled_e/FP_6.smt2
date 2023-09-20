(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun a_ack!37 () (_ BitVec 32))
(assert (fp.lt ((_ to_fp 11 53) b_ack!36) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvslt a_ack!37 #x00000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) b_ack!36))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
