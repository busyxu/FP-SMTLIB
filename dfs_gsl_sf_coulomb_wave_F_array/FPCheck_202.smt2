(declare-fun d_ack!1410 () (_ BitVec 64))
(declare-fun b_ack!1409 () (_ BitVec 32))
(declare-fun a_ack!1412 () (_ BitVec 64))
(declare-fun c_ack!1411 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1410) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000000 b_ack!1409)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1412) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1411)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1411)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1411)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1411))
                           (fp.abs ((_ to_fp 11 53) c_ack!1411)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!1411))
                           (fp.abs ((_ to_fp 11 53) c_ack!1411))))))
  (FPCHECK_FINVALID_LOG
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
