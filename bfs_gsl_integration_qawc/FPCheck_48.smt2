(declare-fun limit_ack!605 () (_ BitVec 64))
(declare-fun a_ack!606 () (_ BitVec 64))
(declare-fun b_ack!601 () (_ BitVec 64))
(declare-fun epsabs_ack!603 () (_ BitVec 64))
(declare-fun epsrel_ack!604 () (_ BitVec 64))
(declare-fun c_ack!602 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!605)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!601) ((_ to_fp 11 53) a_ack!606))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!603) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!604)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!604)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!602) ((_ to_fp 11 53) a_ack!606))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!602) ((_ to_fp 11 53) b_ack!601))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!602))
                   ((_ to_fp 11 53) b_ack!601))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!606))
                 ((_ to_fp 11 53) a_ack!606))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) c_ack!602))
                   ((_ to_fp 11 53) b_ack!601))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 a!1
                 (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!606)))
         ((_ to_fp 11 53) a_ack!606))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!601 a_ack!606))

(check-sat)
(exit)
