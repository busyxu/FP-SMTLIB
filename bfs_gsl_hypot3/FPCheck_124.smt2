(declare-fun c_ack!626 () (_ BitVec 64))
(declare-fun b_ack!625 () (_ BitVec 64))
(declare-fun a_ack!627 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!625))
       (fp.abs ((_ to_fp 11 53) c_ack!626))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!627))
       (fp.abs ((_ to_fp 11 53) b_ack!625))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.abs ((_ to_fp 11 53) a_ack!627))
  (fp.abs ((_ to_fp 11 53) a_ack!627))))

(check-sat)
(exit)
