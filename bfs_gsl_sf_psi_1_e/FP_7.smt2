(declare-fun a_ack!27 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xc000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!27) ((_ to_fp 11 53) #xc014000000000000))))

(check-sat)
(exit)
