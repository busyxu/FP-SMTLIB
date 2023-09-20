(declare-fun c_ack!658 () (_ BitVec 64))
(declare-fun a_ack!659 () (_ BitVec 32))
(declare-fun b_ack!657 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!658))
            ((_ to_fp 11 53) #x40862642fefa39ef))))
(assert (not (bvslt b_ack!657 a_ack!659)))
(assert (not (bvslt a_ack!659 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!658) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!657))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!658))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.abs ((_ to_fp 11 53) c_ack!658)))
  (fp.abs ((_ to_fp 11 53) c_ack!658))))

(check-sat)
(exit)
