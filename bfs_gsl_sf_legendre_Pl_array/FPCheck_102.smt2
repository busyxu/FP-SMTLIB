(declare-fun a_ack!392 () (_ BitVec 32))
(declare-fun b_ack!391 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!392 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!391) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!392)))
(assert (not (= #x00000001 a_ack!392)))
(assert (bvsle #x00000002 a_ack!392))
(assert (bvsle #x00000003 a_ack!392))
(assert (bvsle #x00000004 a_ack!392))
(assert (bvsle #x00000005 a_ack!392))
(assert (bvsle #x00000006 a_ack!392))
(assert (bvsle #x00000007 a_ack!392))
(assert (bvsle #x00000008 a_ack!392))
(assert (bvsle #x00000009 a_ack!392))
(assert (FPCHECK_FMUL_OVERFLOW b_ack!391 #x4031000000000000))

(check-sat)
(exit)
