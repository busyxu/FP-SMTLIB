(declare-fun a_ack!1223 () (_ BitVec 64))
(declare-fun b_ack!1222 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))
            #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1222) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ed965fea53d6e41)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223))))))
  (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!1222)) a!1))))
(assert (not (= #x00000000
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223)))))
(assert (not (= #x00000001
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223)))))
(assert (not (= #x00000002
        ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1222)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) b_ack!1222)
                  ((_ to_fp 11 53)
                    roundNearestTiesToEven
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223))))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc024000000000000)
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223))))))
  (not (fp.gt ((_ to_fp 11 53) b_ack!1222) a!1))))
(assert (bvslt #x00000001
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000002
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000003
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000004
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000005
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000006
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000007
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000008
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000009
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000a
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000b
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000c
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000d
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000e
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x0000000f
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000010
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000011
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000012
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000013
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000014
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000015
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000016
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000017
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (bvslt #x00000018
       ((_ fp.to_sbv 32) roundTowardZero ((_ to_fp 11 53) a_ack!1223))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!2 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffe
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!4 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffd
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!5 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffc
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!7 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffb
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!8 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (bvadd #xfffffffa
                    ((_ fp.to_sbv 32)
                      roundTowardZero
                      ((_ to_fp 11 53) a_ack!1223)))))
      (a!10 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!11 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!13 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff7
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!14 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff6
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!16 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff5
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!17 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff4
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!19 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff3
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!20 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff2
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!22 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff1
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!23 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xfffffff0
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!25 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffef
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!26 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffee
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!28 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffed
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!29 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffec
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!31 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffeb
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!32 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffea
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!34 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe9
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223)))))
      (a!35 ((_ to_fp 11 53)
              roundNearestTiesToEven
              (bvadd #xffffffe8
                     ((_ fp.to_sbv 32)
                       roundTowardZero
                       ((_ to_fp 11 53) a_ack!1223))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) b_ack!1222)))
                   (fp.div roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           (fp.div roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) b_ack!1222)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!6
                           (fp.div roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) b_ack!1222)))
                   (fp.div roundNearestTiesToEven
                           a!8
                           ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!9
                            (fp.div roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!12
                            (fp.div roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!18 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!15
                            (fp.div roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!17
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!21 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!18
                            (fp.div roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!20
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!21
                            (fp.div roundNearestTiesToEven
                                    a!22
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!27 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!24
                            (fp.div roundNearestTiesToEven
                                    a!25
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!26
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!30 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!27
                            (fp.div roundNearestTiesToEven
                                    a!28
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!29
                            ((_ to_fp 11 53) b_ack!1222)))))
(let ((a!33 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!30
                            (fp.div roundNearestTiesToEven
                                    a!31
                                    ((_ to_fp 11 53) b_ack!1222)))
                    (fp.div roundNearestTiesToEven
                            a!32
                            ((_ to_fp 11 53) b_ack!1222)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven
            a!33
            (fp.div roundNearestTiesToEven a!34 ((_ to_fp 11 53) b_ack!1222)))
    (fp.div roundNearestTiesToEven a!35 ((_ to_fp 11 53) b_ack!1222))))))))))))))))

(check-sat)
(exit)
