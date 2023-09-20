(declare-fun a_ack!1366 () (_ BitVec 64))
(declare-fun b_ack!1363 () (_ BitVec 64))
(declare-fun c_ack!1364 () (_ BitVec 64))
(declare-fun d_ack!1365 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1366) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1363) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1364) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) d_ack!1365)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3d4f400000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!1364)
          ((_ to_fp 11 53) a_ack!1366))
  b_ack!1363))

(check-sat)
(exit)
