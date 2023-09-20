(declare-fun a_ack!1041 () (_ BitVec 64))
(declare-fun c_ack!1039 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!1040 () (_ BitVec 64))
(declare-fun b_ack!1038 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1041) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1039) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1041))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!1039))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1041))
            (fp.abs ((_ to_fp 11 53) c_ack!1039)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1041))
            (fp.abs ((_ to_fp 11 53) c_ack!1039)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1039))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1039))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!1039)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1041)
                                  ((_ to_fp 11 53) c_ack!1039)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!1038)
                  ((_ to_fp 11 53) c_ack!1039)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!1040)
                  ((_ to_fp 11 53) a_ack!1041)))))

(check-sat)
(exit)
