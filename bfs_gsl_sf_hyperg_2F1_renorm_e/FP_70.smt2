(declare-fun a_ack!1336 () (_ BitVec 64))
(declare-fun b_ack!1334 () (_ BitVec 64))
(declare-fun c_ack!1335 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!1336) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1334) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1335) ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
