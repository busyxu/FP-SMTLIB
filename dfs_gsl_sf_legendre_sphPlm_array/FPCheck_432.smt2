(declare-fun b_ack!2160 () (_ BitVec 32))
(declare-fun a_ack!2162 () (_ BitVec 32))
(declare-fun c_ack!2161 () (_ BitVec 64))
(assert (not (bvslt b_ack!2160 #x00000000)))
(assert (not (bvslt a_ack!2162 b_ack!2160)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2161) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2161) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt #x00000000 b_ack!2160)))
(assert (= #x00000000 b_ack!2160))
(assert (not (= a_ack!2162 b_ack!2160)))
(assert (not (= a_ack!2162 (bvadd #x00000001 b_ack!2160))))
(assert (bvsle (bvadd #x00000002 b_ack!2160) a_ack!2162))
(assert (bvsle (bvadd #x00000003 b_ack!2160) a_ack!2162))
(assert (bvsle (bvadd #x00000004 b_ack!2160) a_ack!2162))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2161)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2161)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2160 b_ack!2160)))
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
                     (bvadd #x00000003 (bvadd b_ack!2160 b_ack!2160)))
                   a!3)))
  (not (fp.eq (fp.abs a!4) ((_ to_fp 11 53) #x0000000000000000)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2161)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2161)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2160 b_ack!2160)))
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
                     (bvadd #x00000003 (bvadd b_ack!2160 b_ack!2160)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 a!4)
         ((_ to_fp 11 53) #x3ff5775c544ff263))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) c_ack!2161)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2161)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))
                           ((_ to_fp 11 53) #x3fd20dd750429b6d))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd #x00000001 (bvadd b_ack!2160 b_ack!2160)))
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
                     (bvadd #x00000003 (bvadd b_ack!2160 b_ack!2160)))
                   a!3)))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         a!4
                         ((_ to_fp 11 53) #x3ff5775c544ff263))
                 ((_ to_fp 11 53) #x3ff5775c544ff263))
         a!4)))))
(assert (bvsle (bvadd #x00000005 b_ack!2160) a_ack!2162))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvadd #x00000005 b_ack!2160 b_ack!2160))
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
