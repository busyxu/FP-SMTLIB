(declare-fun limit_ack!712 () (_ BitVec 64))
(declare-fun a_ack!713 () (_ BitVec 64))
(declare-fun b_ack!709 () (_ BitVec 64))
(declare-fun epsabs_ack!711 () (_ BitVec 64))
(declare-fun c_ack!710 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!712)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!709) ((_ to_fp 11 53) a_ack!713)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!711)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!710) ((_ to_fp 11 53) a_ack!713))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!710) ((_ to_fp 11 53) b_ack!709))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!710))
                   ((_ to_fp 11 53) a_ack!713))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!709))
                 ((_ to_fp 11 53) b_ack!709))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!710))
                   ((_ to_fp 11 53) a_ack!713))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!709)))
         ((_ to_fp 11 53) b_ack!709))))
(assert (FPCHECK_FSUB_ACCURACY a_ack!713 b_ack!709))

(check-sat)
(exit)
