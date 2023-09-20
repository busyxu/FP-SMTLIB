(declare-fun limit_ack!6176 () (_ BitVec 64))
(declare-fun a_ack!6177 () (_ BitVec 64))
(declare-fun b_ack!6173 () (_ BitVec 64))
(declare-fun epsabs_ack!6175 () (_ BitVec 64))
(declare-fun c_ack!6174 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!6176)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6173) ((_ to_fp 11 53) a_ack!6177))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!6175)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6174) ((_ to_fp 11 53) a_ack!6177))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!6174) ((_ to_fp 11 53) b_ack!6173))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6173)
                       ((_ to_fp 11 53) a_ack!6177))
               ((_ to_fp 11 53) a_ack!6177))
       ((_ to_fp 11 53) b_ack!6173)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!6173)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!6173)
                       ((_ to_fp 11 53) a_ack!6177)))
       ((_ to_fp 11 53) a_ack!6177)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!6174))
                           ((_ to_fp 11 53) b_ack!6173))
                   ((_ to_fp 11 53) a_ack!6177))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6173)
                                   ((_ to_fp 11 53) a_ack!6177))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (not (fp.leq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3ff0000000000000)
                     ((_ to_fp 11 53) a_ack!6177))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!6173)
                  ((_ to_fp 11 53) a_ack!6177)))
  #x3fefb9ea92ec689b))

(check-sat)
(exit)
