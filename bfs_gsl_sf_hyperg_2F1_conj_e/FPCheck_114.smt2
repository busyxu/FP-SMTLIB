(declare-fun c_ack!776 () (_ BitVec 64))
(declare-fun d_ack!777 () (_ BitVec 64))
(declare-fun a_ack!778 () (_ BitVec 64))
(declare-fun b_ack!775 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!776) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!777))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!776) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!777))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!778))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!775))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!776) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!775)
                           ((_ to_fp 11 53) b_ack!775)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!776)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.geq (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) d_ack!777)))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!3)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!778)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!775)
                           ((_ to_fp 11 53) b_ack!775)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!776)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) d_ack!777))))))
  (FPCHECK_FSUB_ACCURACY #x3ff0000000000000 a!3)))))

(check-sat)
(exit)
