(declare-fun limit_ack!1043 () (_ BitVec 64))
(declare-fun a_ack!1044 () (_ BitVec 64))
(declare-fun b_ack!1040 () (_ BitVec 64))
(declare-fun epsabs_ack!1042 () (_ BitVec 64))
(declare-fun c_ack!1041 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!1043)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1040) ((_ to_fp 11 53) a_ack!1044))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!1042)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1041) ((_ to_fp 11 53) a_ack!1044))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1041) ((_ to_fp 11 53) b_ack!1040))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1040)
                       ((_ to_fp 11 53) a_ack!1044))
               ((_ to_fp 11 53) a_ack!1044))
       ((_ to_fp 11 53) b_ack!1040)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!1040)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!1040)
                       ((_ to_fp 11 53) a_ack!1044)))
       ((_ to_fp 11 53) a_ack!1044)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!1041))
                           ((_ to_fp 11 53) b_ack!1040))
                   ((_ to_fp 11 53) a_ack!1044))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1040)
                                   ((_ to_fp 11 53) a_ack!1044))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FADD_UNDERFLOW b_ack!1040 a_ack!1044))

(check-sat)
(exit)
