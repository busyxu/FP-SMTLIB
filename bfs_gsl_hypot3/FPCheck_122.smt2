(declare-fun c_ack!620 () (_ BitVec 64))
(declare-fun b_ack!619 () (_ BitVec 64))
(declare-fun a_ack!621 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!619))
       (fp.abs ((_ to_fp 11 53) c_ack!620))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!621))
       (fp.abs ((_ to_fp 11 53) b_ack!619))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!621))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) a_ack!621))
  (fp.abs ((_ to_fp 11 53) a_ack!621))))

(check-sat)
(exit)
