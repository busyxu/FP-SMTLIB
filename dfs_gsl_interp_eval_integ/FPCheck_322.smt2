(declare-fun x1_ack!3881 () (_ BitVec 64))
(declare-fun x0_ack!3885 () (_ BitVec 64))
(declare-fun x2_ack!3882 () (_ BitVec 64))
(declare-fun b_ack!3884 () (_ BitVec 64))
(declare-fun a_ack!3883 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3885) ((_ to_fp 11 53) x1_ack!3881)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3881) ((_ to_fp 11 53) x2_ack!3882)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3881)
                       ((_ to_fp 11 53) x0_ack!3885))
               ((_ to_fp 11 53) x0_ack!3885))
       ((_ to_fp 11 53) x1_ack!3881)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3881)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3881)
                       ((_ to_fp 11 53) x0_ack!3885)))
       ((_ to_fp 11 53) x0_ack!3885)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3882)
                       ((_ to_fp 11 53) x1_ack!3881))
               ((_ to_fp 11 53) x1_ack!3881))
       ((_ to_fp 11 53) x2_ack!3882)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3882)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3882)
                       ((_ to_fp 11 53) x1_ack!3881)))
       ((_ to_fp 11 53) x1_ack!3881)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3881)
                    ((_ to_fp 11 53) x0_ack!3885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3882)
                    ((_ to_fp 11 53) x1_ack!3881))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3883) ((_ to_fp 11 53) b_ack!3884))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3883) ((_ to_fp 11 53) x0_ack!3885))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3884) ((_ to_fp 11 53) x2_ack!3882))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3883) ((_ to_fp 11 53) b_ack!3884))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3883) ((_ to_fp 11 53) x0_ack!3885))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3883) ((_ to_fp 11 53) x1_ack!3881))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3884) ((_ to_fp 11 53) x0_ack!3885))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3884) ((_ to_fp 11 53) x1_ack!3881))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3881)
                    ((_ to_fp 11 53) x0_ack!3885))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3883)
                                   ((_ to_fp 11 53) x0_ack!3885))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3883)
                                   ((_ to_fp 11 53) x0_ack!3885)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3884)
                                   ((_ to_fp 11 53) x0_ack!3885))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3884)
                                   ((_ to_fp 11 53) x0_ack!3885))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3883)
                                   ((_ to_fp 11 53) x0_ack!3885))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3884)
                                   ((_ to_fp 11 53) x0_ack!3885))))))
  (FPCHECK_FMUL_UNDERFLOW #x0000000000000000 a!2))))

(check-sat)
(exit)
