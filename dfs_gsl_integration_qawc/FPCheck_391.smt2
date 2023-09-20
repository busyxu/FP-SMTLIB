(declare-fun limit_ack!5941 () (_ BitVec 64))
(declare-fun a_ack!5942 () (_ BitVec 64))
(declare-fun b_ack!5938 () (_ BitVec 64))
(declare-fun epsabs_ack!5940 () (_ BitVec 64))
(declare-fun c_ack!5939 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!5941)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5938) ((_ to_fp 11 53) a_ack!5942))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!5940)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5939) ((_ to_fp 11 53) a_ack!5942))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!5939) ((_ to_fp 11 53) b_ack!5938))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5938)
                       ((_ to_fp 11 53) a_ack!5942))
               ((_ to_fp 11 53) a_ack!5942))
       ((_ to_fp 11 53) b_ack!5938)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!5938)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!5938)
                       ((_ to_fp 11 53) a_ack!5942)))
       ((_ to_fp 11 53) a_ack!5942)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) c_ack!5939))
                           ((_ to_fp 11 53) b_ack!5938))
                   ((_ to_fp 11 53) a_ack!5942))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5938)
                                   ((_ to_fp 11 53) a_ack!5942))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x3ff199999999999a))))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3ff0000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5938)
                  ((_ to_fp 11 53) a_ack!5942)))))

(check-sat)
(exit)
