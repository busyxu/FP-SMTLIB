(declare-fun a_ack!1022 () (_ BitVec 64))
(declare-fun c_ack!1020 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun d_ack!1021 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1022) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1020) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) a_ack!1022))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq (fp.abs ((_ to_fp 11 53) c_ack!1020))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!1022))
            (fp.abs ((_ to_fp 11 53) c_ack!1020)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!1022))
            (fp.abs ((_ to_fp 11 53) c_ack!1020)))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1020))
            ((_ to_fp 11 53) #x5feccccccccccccc))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!1020))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feffffffffffffb)
               (fp.abs ((_ to_fp 11 53) c_ack!1020)))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1022)
                                  ((_ to_fp 11 53) c_ack!1020)))
                  ((_ to_fp 11 53) #x0010000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY d_ack!1021 a_ack!1022))

(check-sat)
(exit)
