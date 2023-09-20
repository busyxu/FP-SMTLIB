(declare-fun limit_ack!692 () (_ BitVec 64))
(declare-fun a_ack!693 () (_ BitVec 64))
(declare-fun b_ack!689 () (_ BitVec 64))
(declare-fun epsabs_ack!691 () (_ BitVec 64))
(declare-fun c_ack!690 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!692)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!689) ((_ to_fp 11 53) a_ack!693)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!691)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!690) ((_ to_fp 11 53) a_ack!693))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!690) ((_ to_fp 11 53) b_ack!689))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!690))
                   ((_ to_fp 11 53) a_ack!693))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!689))
                 ((_ to_fp 11 53) b_ack!689))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!690))
                   ((_ to_fp 11 53) a_ack!693))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) b_ack!689)))
         ((_ to_fp 11 53) b_ack!689))))
(assert (FPCHECK_FSUB_OVERFLOW a_ack!693 b_ack!689))

(check-sat)
(exit)
