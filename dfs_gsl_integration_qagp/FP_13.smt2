(declare-fun limit_ack!602 () (_ BitVec 64))
(declare-fun epsabs_ack!607 () (_ BitVec 64))
(declare-fun epsrel_ack!601 () (_ BitVec 64))
(declare-fun a_ack!608 () (_ BitVec 64))
(declare-fun x1_ack!603 () (_ BitVec 64))
(declare-fun x2_ack!604 () (_ BitVec 64))
(declare-fun x3_ack!605 () (_ BitVec 64))
(declare-fun b_ack!606 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!602)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!607) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!601)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!601)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!603) ((_ to_fp 11 53) a_ack!608))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!604) ((_ to_fp 11 53) x1_ack!603))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!605) ((_ to_fp 11 53) x2_ack!604))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!606) ((_ to_fp 11 53) x3_ack!605))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!608)
                                   ((_ to_fp 11 53) x1_ack!603))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
