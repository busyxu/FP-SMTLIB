(declare-fun a_ack!502 () (_ BitVec 64))
(declare-fun b_ack!499 () (_ BitVec 64))
(declare-fun c_ack!500 () (_ BitVec 64))
(declare-fun d_ack!501 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!502) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!499) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!500) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!501)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))

(check-sat)
(exit)
