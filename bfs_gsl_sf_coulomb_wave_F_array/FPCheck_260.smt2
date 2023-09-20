(declare-fun d_ack!1723 () (_ BitVec 64))
(declare-fun b_ack!1722 () (_ BitVec 32))
(declare-fun a_ack!1725 () (_ BitVec 64))
(declare-fun c_ack!1724 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!1723) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!1722))
(assert (not (bvsle #x00000001 b_ack!1722)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!1725) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!1724)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1724)))))
(assert (not (fp.gt ((_ to_fp 11 53) #x401e000000000000)
            (fp.abs ((_ to_fp 11 53) c_ack!1724)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1724))
          (fp.abs ((_ to_fp 11 53) c_ack!1724)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!1724))
          (fp.abs ((_ to_fp 11 53) c_ack!1724)))))

(check-sat)
(exit)
