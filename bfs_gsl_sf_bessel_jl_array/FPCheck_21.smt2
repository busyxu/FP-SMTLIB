(declare-fun a_ack!81 () (_ BitVec 32))
(declare-fun b_ack!80 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!81 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 a_ack!81) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff a_ack!81)))
(assert (= #x00000000 a_ack!81))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!80) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!80))
            ((_ to_fp 11 53) #x0028cccccccccccd))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!80))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FDIV_OVERFLOW (CF_cos b_ack!80) b_ack!80))

(check-sat)
(exit)
