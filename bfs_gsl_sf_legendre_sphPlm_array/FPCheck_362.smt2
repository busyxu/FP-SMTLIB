(declare-fun b_ack!1644 () (_ BitVec 32))
(declare-fun a_ack!1646 () (_ BitVec 32))
(declare-fun c_ack!1645 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!1644 #x00000000)))
(assert (not (bvslt a_ack!1646 b_ack!1644)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1645) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1645) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!1644)))
(assert (= #x00000000 b_ack!1644))
(assert (not (= a_ack!1646 b_ack!1644)))
(assert (not (= a_ack!1646 (bvadd #x00000001 b_ack!1644))))
(assert (bvsle (bvadd #x00000002 b_ack!1644) a_ack!1646))
(assert (bvsle (bvadd #x00000003 b_ack!1644) a_ack!1646))
(assert (bvsle (bvadd #x00000004 b_ack!1644) a_ack!1646))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1645)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1645)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!1644 b_ack!1644)))
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
                     (bvadd #x00000003 (bvadd b_ack!1644 b_ack!1644)))
                   a!3)))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1645)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1645)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!1644 b_ack!1644)))
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
                     (bvadd #x00000003 (bvadd b_ack!1644 b_ack!1644)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 a!4)
         ((_ to_fp 11 53) #x3ff5775c544ff263))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!1645)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1645)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!1644 b_ack!1644)))
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
                     (bvadd #x00000003 (bvadd b_ack!1644 b_ack!1644)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 ((_ to_fp 11 53) #x3ff5775c544ff263))
         a!4)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1645)
                           ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d)))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!1644 b_ack!1644)))
                   ((_ to_fp 11 53) #x3fd20dd750429b6d))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1645)
                                   a!1)
                           ((_ to_fp 11 53) #x400efbdeb14f4eda))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x4001e3779b97f4a8))))
      (a!5 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000002 (bvadd b_ack!1644 b_ack!1644)))
                   a!1)))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!1645)
                           (fp.div roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   ((_ to_fp 11 53) #x4017aa10d193c22d)))
      (a!7 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000003 (bvadd b_ack!1644 b_ack!1644)))
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
                                   ((_ to_fp 11 53) c_ack!1645)
                                   a!6)
                           ((_ to_fp 11 53) #x401fbfbf7ebc755f))
                   (fp.mul roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3ff5775c544ff263)))))
  (FPCHECK_FDIV_UNDERFLOW a!8 #x4010000000000000)))))))

(check-sat)
(exit)
