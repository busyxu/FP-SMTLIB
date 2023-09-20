(declare-fun b_ack!1196 () (_ BitVec 64))
(declare-fun a_ack!1197 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1197 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!1197)))
(assert (not (= #x00000001 a_ack!1197)))
(assert (= #x00000002 a_ack!1197))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1196) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1196))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1196))
            ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!1196))
          (fp.abs ((_ to_fp 11 53) b_ack!1196)))
  (fp.abs ((_ to_fp 11 53) b_ack!1196))))

(check-sat)
(exit)
