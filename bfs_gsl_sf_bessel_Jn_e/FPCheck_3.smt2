(declare-fun a_ack!16 () (_ BitVec 32))
(declare-fun b_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!16 #x00000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!15) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW #x8000000000000000 b_ack!15))

(check-sat)
(exit)
