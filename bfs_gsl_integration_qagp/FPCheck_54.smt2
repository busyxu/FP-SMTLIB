(declare-fun limit_ack!930 () (_ BitVec 64))
(declare-fun epsabs_ack!935 () (_ BitVec 64))
(declare-fun a_ack!936 () (_ BitVec 64))
(declare-fun x1_ack!931 () (_ BitVec 64))
(declare-fun x2_ack!932 () (_ BitVec 64))
(declare-fun x3_ack!933 () (_ BitVec 64))
(declare-fun b_ack!934 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!930)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!935)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!931) ((_ to_fp 11 53) a_ack!936))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!932) ((_ to_fp 11 53) x1_ack!931))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!933) ((_ to_fp 11 53) x2_ack!932))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!934) ((_ to_fp 11 53) x3_ack!933))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!936)
                                   ((_ to_fp 11 53) x1_ack!931))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!931)
                                   ((_ to_fp 11 53) a_ack!936)))
                   ((_ to_fp 11 53) #x3fef2a3e062af2d8))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!936)
                                   ((_ to_fp 11 53) x1_ack!931)))
                   a!1)))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
