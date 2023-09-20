(declare-fun b_ack!648 () (_ BitVec 64))
(declare-fun a_ack!649 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!649 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!649)))
(assert (not (= #x00000001 a_ack!649)))
(assert (= #x00000002 a_ack!649))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!648) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!648))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!648))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!648))
          (fp.abs ((_ to_fp 11 53) b_ack!648)))
  (fp.abs ((_ to_fp 11 53) b_ack!648))))

(check-sat)
(exit)
