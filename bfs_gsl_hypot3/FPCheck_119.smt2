(declare-fun c_ack!611 () (_ BitVec 64))
(declare-fun b_ack!610 () (_ BitVec 64))
(declare-fun a_ack!612 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!610))
       (fp.abs ((_ to_fp 11 53) c_ack!611))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!612))
       (fp.abs ((_ to_fp 11 53) b_ack!610))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!612))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) a_ack!612))
  (fp.abs ((_ to_fp 11 53) a_ack!612))))

(check-sat)
(exit)
