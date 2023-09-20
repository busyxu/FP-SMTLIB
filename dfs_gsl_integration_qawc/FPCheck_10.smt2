(declare-fun limit_ack!158 () (_ BitVec 64))
(declare-fun a_ack!159 () (_ BitVec 64))
(declare-fun b_ack!154 () (_ BitVec 64))
(declare-fun epsabs_ack!156 () (_ BitVec 64))
(declare-fun epsrel_ack!157 () (_ BitVec 64))
(declare-fun c_ack!155 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!158)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!154) ((_ to_fp 11 53) a_ack!159))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!156) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!157)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!157)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!155) ((_ to_fp 11 53) a_ack!159))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!155) ((_ to_fp 11 53) b_ack!154))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!155))
                   ((_ to_fp 11 53) b_ack!154))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!159))
                 ((_ to_fp 11 53) a_ack!159))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!155))
                   ((_ to_fp 11 53) b_ack!154))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!159)))
         ((_ to_fp 11 53) a_ack!159))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!154 a_ack!159))

(check-sat)
(exit)
