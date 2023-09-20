(declare-fun c_ack!640 () (_ BitVec 64))
(declare-fun a_ack!641 () (_ BitVec 32))
(declare-fun b_ack!639 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!641 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!641))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!640) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!639) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!639)
                       ((_ to_fp 11 53) c_ack!640)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!639)
          ((_ to_fp 11 53) c_ack!640))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!639)
          ((_ to_fp 11 53) c_ack!640))))

(check-sat)
(exit)
