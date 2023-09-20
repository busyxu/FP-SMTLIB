(declare-fun b_ack!2310 () (_ BitVec 32))
(declare-fun a_ack!2312 () (_ BitVec 32))
(declare-fun c_ack!2311 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2310 #x00000000)))
(assert (not (bvslt a_ack!2312 b_ack!2310)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2311) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2311) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2310)))
(assert (= #x00000000 b_ack!2310))
(assert (not (= a_ack!2312 b_ack!2310)))
(assert (not (= a_ack!2312 (bvadd #x00000001 b_ack!2310))))
(assert (bvsle (bvadd #x00000002 b_ack!2310) a_ack!2312))
(assert (bvsle (bvadd #x00000003 b_ack!2310) a_ack!2312))
(assert (bvsle (bvadd #x00000004 b_ack!2310) a_ack!2312))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2311)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2311)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2310 b_ack!2310)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4001e3779b97f4a8)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000003 (bvadd b_ack!2310 b_ack!2310)))
                   a!3)))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2311)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2311)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2310 b_ack!2310)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4001e3779b97f4a8)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000003 (bvadd b_ack!2310 b_ack!2310)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 a!4)
         ((_ to_fp 11 53) #x3ff5775c544ff263))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2311)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2311)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2310 b_ack!2310)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x400efbdeb14f4eda))
                           (fp.mul roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x4001e3779b97f4a8)))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000003 (bvadd b_ack!2310 b_ack!2310)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 ((_ to_fp 11 53) #x3ff5775c544ff263))
         a!4)))))
(assert (bvsle (bvadd #x00000005 b_ack!2310) a_ack!2312))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2311)
                           ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2310 b_ack!2310)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2311)
                                   a!1)
                           ((_ to_fp 11 53) #x400efbdeb14f4eda))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4001e3779b97f4a8))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 (bvadd b_ack!2310 b_ack!2310)))
                   a!1)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2311)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4017aa10d193c22d)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000003 (bvadd b_ack!2310 b_ack!2310)))
                   (fp.div roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!6 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!4
                           (fp.mul roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #x3ff870be4c1c28b2)))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2311)
                                   a!6)
                           ((_ to_fp 11 53) #x401fbfbf7ebc755f))
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff5775c544ff263))))
      (a!10 (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53)
                      roundNearestTiesToEven
                      (bvadd #x00000004 (bvadd b_ack!2310 b_ack!2310)))
                    a!6)))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2311)
                           (fp.div roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x4010000000000000)))
                   ((_ to_fp 11 53) #x4023e655eefe1367))))
  (FPCHECK_FSUB_ACCURACY
    a!9
    (fp.mul roundNearestTiesToEven a!10 ((_ to_fp 11 53) #x3ff40e9b94633b4c))))))))))

(check-sat)
(exit)
