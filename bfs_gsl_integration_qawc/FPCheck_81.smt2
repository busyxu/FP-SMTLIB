(declare-fun limit_ack!1033 () (_ BitVec 64))
(declare-fun a_ack!1034 () (_ BitVec 64))
(declare-fun b_ack!1030 () (_ BitVec 64))
(declare-fun epsabs_ack!1032 () (_ BitVec 64))
(declare-fun c_ack!1031 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1033)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1030) ((_ to_fp 11 53) a_ack!1034))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1032)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1031) ((_ to_fp 11 53) a_ack!1034))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1031) ((_ to_fp 11 53) b_ack!1030))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1030)
                       ((_ to_fp 11 53) a_ack!1034))
               ((_ to_fp 11 53) a_ack!1034))
       ((_ to_fp 11 53) b_ack!1030)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1030)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1030)
                       ((_ to_fp 11 53) a_ack!1034)))
       ((_ to_fp 11 53) a_ack!1034)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1031))
                           ((_ to_fp 11 53) b_ack!1030))
                   ((_ to_fp 11 53) a_ack!1034))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1030)
                                   ((_ to_fp 11 53) a_ack!1034))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FADD_OVERFLOW b_ack!1030 a_ack!1034))

(check-sat)
(exit)
