(declare-fun c_ack!428 () (_ BitVec 64))
(declare-fun a_ack!430 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!429 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!428) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!430) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!430)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!428))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!430)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!428))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (FPCHECK_FDIV_OVERFLOW d_ack!429 c_ack!428))

(check-sat)
(exit)
