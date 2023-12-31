(declare-fun limit_ack!6042 () (_ BitVec 64))
(declare-fun epsabs_ack!6047 () (_ BitVec 64))
(declare-fun epsrel_ack!6041 () (_ BitVec 64))
(declare-fun a_ack!6048 () (_ BitVec 64))
(declare-fun x1_ack!6043 () (_ BitVec 64))
(declare-fun x2_ack!6044 () (_ BitVec 64))
(declare-fun x3_ack!6045 () (_ BitVec 64))
(declare-fun b_ack!6046 () (_ BitVec 64))
(assert (not (bvult #x00000000000003e8 limit_ack!6042)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!6047) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6041)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!6041)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!6043) ((_ to_fp 11 53) a_ack!6048))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!6044) ((_ to_fp 11 53) x1_ack!6043))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!6045) ((_ to_fp 11 53) x2_ack!6044))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6046) ((_ to_fp 11 53) x3_ack!6045))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6048)
                                   ((_ to_fp 11 53) x1_ack!6043))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
