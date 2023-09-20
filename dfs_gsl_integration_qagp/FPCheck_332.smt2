(declare-fun limit_ack!5698 () (_ BitVec 64))
(declare-fun epsabs_ack!5703 () (_ BitVec 64))
(declare-fun epsrel_ack!5697 () (_ BitVec 64))
(declare-fun a_ack!5704 () (_ BitVec 64))
(declare-fun x1_ack!5699 () (_ BitVec 64))
(declare-fun x2_ack!5700 () (_ BitVec 64))
(declare-fun x3_ack!5701 () (_ BitVec 64))
(declare-fun b_ack!5702 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvult #x00000000000003e8 limit_ack!5698)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!5703) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5697)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!5697)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!5699) ((_ to_fp 11 53) a_ack!5704))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!5700) ((_ to_fp 11 53) x1_ack!5699))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!5701) ((_ to_fp 11 53) x2_ack!5700))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5702) ((_ to_fp 11 53) x3_ack!5701))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5704)
                                   ((_ to_fp 11 53) x1_ack!5699))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5699)
                                   ((_ to_fp 11 53) a_ack!5704)))
                   ((_ to_fp 11 53) #x3fedc3d9a4b011c6))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5704)
                                   ((_ to_fp 11 53) x1_ack!5699)))
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (CF_log (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!2))
    #x7ff8000000000001))))

(check-sat)
(exit)
