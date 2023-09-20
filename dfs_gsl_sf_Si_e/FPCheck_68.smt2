(declare-fun a_ack!93 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!93))
            ((_ to_fp 11 53) #x3e50000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!93))
             ((_ to_fp 11 53) #x4010000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!93))
             ((_ to_fp 11 53) #x401c48c6001f1ea6))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!93))
             ((_ to_fp 11 53) #x4190000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!93))
            ((_ to_fp 11 53) #x7fd0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!93))
            ((_ to_fp 11 53) #x5fe0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x0000000000000000
  (CF_cos (fp.abs ((_ to_fp 11 53) a_ack!93)))))

(check-sat)
(exit)
