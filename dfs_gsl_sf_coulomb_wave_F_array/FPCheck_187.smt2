(declare-fun d_ack!1350 () (_ BitVec 64))
(declare-fun b_ack!1349 () (_ BitVec 32))
(declare-fun a_ack!1352 () (_ BitVec 64))
(declare-fun c_ack!1351 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1350) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!1349)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1352) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1351)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1351)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1351)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!1351))
  (fp.abs ((_ to_fp 11 53) c_ack!1351))))

(check-sat)
(exit)
